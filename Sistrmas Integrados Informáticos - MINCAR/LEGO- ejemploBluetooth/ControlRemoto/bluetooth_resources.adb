------------------------------------------------------------------------------
--                                                                          --
--                       Copyright (C) 2010, AdaCore                        --
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

with Ada.Real_Time; use Ada.Real_Time;
with NXT.Display;   use NXT.Display;
with NXT.AVR;

package body Bluetooth_resources is

   procedure Find_Peer (Addr : out NXT.Bluetooth.BT_Address;
                        Success : out Boolean) is
      use NXT.Bluetooth;

      NXT_Class : constant Class_Service := (16#00#, 16#00#, 16#08#, 16#04#);
      Devs : Device_List (1 .. 8);
      Nbr_Devs : Natural;
   begin
      Put_Line ("Find peer");

      for Pass in 1 .. 2 loop
         case Pass is
            when 1 =>
               Get_Known_Peers (Devs, Nbr_Devs);
            when 2 =>
               Put_Line ("Searching Peer");
               Find_Discoverable_Devices (10, Devs, Nbr_Devs);
         end case;

         for I in 1 .. Nbr_Devs loop
            if Devs (I).Class = NXT_Class then
               Addr := Devs (I).Addr;
               if Pass = 2 then
                  Add_Known_Device (Devs (I), Success);
               end if;
               Success := True;
               return;
            end if;
         end loop;
      end loop;
      Put_Line ("Peer not found!");
      Success := False;
   end Find_Peer;

   procedure Power_Off is
   begin
      loop
         delay until Clock + Milliseconds (2_000);
         NXT.AVR.Power_Down;
      end loop;
   end Power_Off;

end Bluetooth_resources;
