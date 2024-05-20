import { WebPlugin } from '@capacitor/core';

import type { BackgroundServiceCapPlugin } from './definitions';

export class BackgroundServiceCapWeb extends WebPlugin implements BackgroundServiceCapPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
