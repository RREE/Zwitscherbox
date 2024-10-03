--  with HAL.GPIO;   use HAL.GPIO;
with HAL.UART;   use HAL.UART;
with RP.Device;  use RP.Device;
with RP.GPIO;    use RP.GPIO;
with RP.UART;
--  with RP.Clock;
with Pico;
with Interfaces;

package Uart1_Comm is
   UART    : RP.UART.UART_Port renames RP.Device.UART_1;
   UART_TX : RP.GPIO.GPIO_Point renames Pico.GP4;
   UART_RX : RP.GPIO.GPIO_Point renames Pico.GP5;
   Buffer  : UART_Data_8b (1 .. 1);
   Status  : UART_Status;
   subtype U8 is Interfaces.Unsigned_8;

   procedure Init;
   procedure Send_UART1 (Byte : U8);
   function Receive_UART1 return U8;

   procedure Wait_2secs;

end Uart1_Comm;
