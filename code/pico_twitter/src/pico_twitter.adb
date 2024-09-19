--  with HAL.GPIO;   use HAL.GPIO;
--  with HAL.UART;   use HAL.UART;
with RP.Device;  use RP.Device;
with RP.GPIO;    use RP.GPIO;
--  with RP.UART;
with RP.Clock;
with Pico;
with DFPlayer;   use type DFPlayer.Player;
with Uart1_Comm;

procedure Pico_Twitter is

   Player  : DFPlayer.Player;

begin

   RP.Clock.Initialize (Pico.XOSC_Frequency);
   RP.Clock.Enable (RP.Clock.PERI);
   RP.Device.Timer.Enable;
   RP.GPIO.Enable;
   Pico.LED.Configure (Output);
   Pico.LED.Set;

   Uart1_Comm.Init;

   Player.Initialize (Uart1_Comm.Send_UART1'Access,
                      Uart1_Comm.Receive_UART1'Access,
                      Uart1_Comm.Wait_2secs'Access);
   loop
      Player.Play (1);
   end loop;
end Pico_Twitter;
