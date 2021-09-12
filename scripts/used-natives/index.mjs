import fs from 'fs/promises';
import { constants as fsConstants } from 'fs';
import AMX from 'node-amx';
import cliProgress from 'cli-progress';

const amxPath = '../../gamemodes/test.amx';

try {
  fs.access(amxPath, fsConstants.F_OK);

  const nativesList = JSON.parse(await fs.readFile('natives.json', 'utf-8'));
  const amx = await AMX.default.fromFile(amxPath);
  const natives = [...new Set(amx.natives.map(v => v.name))];
  const missingNatives = nativesList.filter(v => !natives.map(v => v.toLowerCase()).includes(v.toLowerCase()));

  console.log('Coverage:');
  const progress = new cliProgress.SingleBar({
    format: '{bar} {percentage}% | {value}/{total} natives'
  }, cliProgress.Presets.shades_classic);
  progress.start(nativesList.length, natives.length);
  progress.stop();

  console.log('\nMissing natives:');
  console.dir(missingNatives, { maxArrayLength: null });
  console.log('\nUsed natives:');
  console.dir(natives, { maxArrayLength: null });
} catch (e) {
  console.error(`Couldn\'t access/parse ${amxPath}: `, e);
}
