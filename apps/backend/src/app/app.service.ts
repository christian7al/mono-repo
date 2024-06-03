import { Injectable } from '@nestjs/common'

@Injectable()
export class AppService {
  getData(): { message: string; code: number } {
    return { message: 'Hello API', code: 300 }
  }
}
