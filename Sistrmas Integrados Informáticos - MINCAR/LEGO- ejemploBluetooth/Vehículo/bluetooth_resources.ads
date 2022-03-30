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

with Interfaces;
with Nxt.Bluetooth;
use NXT; -- for types


package Bluetooth_resources is

   type Remote_Command is record
      Len   : Interfaces.Unsigned_8;
      Remote_CMD_R:Character:='s';--Integer:=1;
   end record;

   --  BlueTooth messages
   package Command_IO is new NXT.Bluetooth.IO (Remote_Command);

   procedure Find_Peer (Addr : out Nxt.Bluetooth.BT_Address;
                        Success : out Boolean);
   --  Find the peer from its name.

   procedure Power_Off;
   --  Force nxt power off.

end Bluetooth_resources;
