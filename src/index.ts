import { registerPlugin } from '@capacitor/core';

import type { BackgroundServiceCapPlugin } from './definitions';

const BackgroundServiceCap = registerPlugin<BackgroundServiceCapPlugin>('BackgroundServiceCap', {
  web: () => import('./web').then(m => new m.BackgroundServiceCapWeb()),
});

export * from './definitions';
export { BackgroundServiceCap };
