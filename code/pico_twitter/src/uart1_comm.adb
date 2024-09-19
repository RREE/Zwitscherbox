
package body Uart1_Comm is

   procedure Init is
   begin
      UART_TX.Configure (Output, Pull_Up, RP.GPIO.UART);
      UART_RX.Configure (Input, Floating, RP.GPIO.UART);
      UART.Configure (Config =>
                        (Baud      => 9600,
                         Word_Size => 8,
                         Parity    => False,
                         Stop_Bits => 1,
                         others    => <>));
   end Init;


   procedure Send_UART1 (Byte : U8) is
   begin
      null;
   end Send_UART1;


   function Receive_UART1 return U8 is
   begin
      return 0;
   end Receive_UART1;


   procedure Wait_2secs is
   begin
      RP.Device.Timer.Delay_Milliseconds (2000);
   end Wait_2secs;


end Uart1_Comm;
