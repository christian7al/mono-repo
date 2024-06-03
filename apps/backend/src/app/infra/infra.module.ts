import { Module } from '@nestjs/common'
import { PostgresModule } from '@base-mono/libs/postgres'

@Module({
  imports: [PostgresModule],
})
export class InfraModule {}
