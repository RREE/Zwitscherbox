package DFPlayer is
   package Serial_Control_Commands is
      type Cmd is Integer range 0 .. 16#4d
         with Size => 8;
      subtype Query_Cmd is Cmd range 16#3C .. 16#4D#;
      subtype Control_Cmd is Cmd range 16#01# .. 16#11#;

      Next      : constant Control_Cmd := 16#11#;
      Previous  : constant Control_Cmd := 16#12#;
   end serial_Control_Commands;

   type Volume_Range is range 0 .. 30;

   type File_Index_Range is range 0 .. 2999;

   procedure Play (File : File_Index_RAnge := 1);
   procedure Play_Next;

   procedure Volume (V : Volume_RAnge);
   procedure Volume_Up;
   procedure Volume_Down;

   function Is_Available return Boolean;
   function Get_Error_Type return Error_Type);




