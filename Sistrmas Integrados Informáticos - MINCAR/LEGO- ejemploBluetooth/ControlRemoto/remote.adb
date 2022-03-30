-- VERSIÓN USADA EN CURSO 2014-2015
------------------------------------------------------------------------------
--                                                                          --
--                    Copyright (C) 2010-2011, AdaCore                      --
--                                                                          --
-- This  is  free  software;  you  can  redistribute  it and/or  modify  it --
-- under terms of the  GNU General Public License as published  by the Free --
-- Software  Foundation;  either version 2,  or (at your option)  any later --
-- version.  This  is  distributed  in the hope that  it  will  be  useful, --
-- but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANT- --
-- ABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public --
-- License for  more details.  You should have  received  a copy of the GNU --
-- General Public License distributed with GNATStack;  see file COPYING. If --
-- not, write to the  Free Software Foundation,  51 Franklin Street,  Fifth --
-- Floor, Boston, MA 02110-1301, USA.                                       --
------------------------------------------------------------------------------

-- GCIS-4
with Interfaces;       use Interfaces;
with Ada.Real_Time;    use Ada.Real_Time;
with NXT.Bluetooth;    use NXT.Bluetooth;
with NXT.AVR;
with NXT.Display;      use NXT.Display;
with bluetooth_resources;           use bluetooth_resources;
with NXT.Last_Chance;
with NXT.Touch_Sensors; use NXT.Touch_Sensors;



procedure remote is
   use NXT; -- for types



   procedure Connect_Remote is
      Success    : Boolean;
      Rc_Address : BT_Address;
   begin
      NXT.Bluetooth.Initialize;
      NXT.Bluetooth.Set_Discoverable (True);

      loop
         Find_Peer (Rc_Address, Success);
         exit when Success;
         Put_Line ("Trying...");
      end loop;

      Put_Line ("Peer found");
      NXT.Bluetooth.Connect (Rc_Address, Success);
      if Success then
         Put_Line ("connected");
      else
         Put_Line ("Connect failed");
         Power_Off;
      end if;
   end Connect_Remote;



   Msg        : aliased Remote_Command;
   Touch_Sensor_Id : Touch_Sensor (Sensor_1);


begin

   Connect_Remote;
   put_noupdate("Conected");
   Screen_Update;

   loop

      case  NXT.AVR.Button is
      when middle_Button =>
         MSG.Remote_CMD_R:='f';
         Clear_Screen_Noupdate;
         put_noupdate( " FORWARD");
      when Power_button =>
         MSG.Remote_CMD_R:='b';
         Clear_Screen_Noupdate;
         put_noupdate( " BACKWARDS");
      when Left_Button =>
         MSG.Remote_CMD_R:='l';
         Clear_Screen_Noupdate;
         put_noupdate( " LEFT");
      when Right_Button =>
         MSG.Remote_CMD_R:='r';
         Clear_Screen_Noupdate;
         put_noupdate( " RIGHT");
      when Others =>     null;
      end case;

      if NXT.Touch_Sensors.Pressed (Touch_Sensor_Id) Then
         MSG.Remote_CMD_R:='s';
         Clear_Screen_Noupdate;
         put_noupdate( " STOP");
      end if;

      Screen_Update;
      --Envio Msg
      Msg := (Len => Msg'Size / 8 - 1,
              Remote_CMD_R => MSG.Remote_CMD_R  );
      Command_IO.Send (Msg'Access);
      delay until Clock + Milliseconds (50);
   end loop;

end remote;
