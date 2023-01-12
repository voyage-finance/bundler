import * as dotenv from 'dotenv';
import * as fs from 'fs';
import * as path from 'path';

export const BUNDLER_ENV = process.env.BUNDLER_ENV || 'dev';

// Load environment-specific env
export function loadEnv(){
  const envFiles = [`.env.${BUNDLER_ENV}.local`, `.env.${BUNDLER_ENV}`, '.env'];
  envFiles.forEach((envFile) => {
    const envFilePath = path.resolve(__dirname, '../../../', envFile);
    if (fs.existsSync(envFilePath)) {
      console.log(`Loaded .env file at ${envFilePath}`);
      dotenv.config({path: envFilePath});
    }
  });
}
