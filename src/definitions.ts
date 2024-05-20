export interface BackgroundServiceCapPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
