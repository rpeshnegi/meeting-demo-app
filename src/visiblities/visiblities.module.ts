import { Module } from '@nestjs/common';
import { VisiblitiesService } from './visiblities.service';
import { VisiblitiesController } from './visiblities.controller';
import { Visiblity } from './entities/visiblity.entity';
import { TypeOrmModule } from '@nestjs/typeorm';

@Module({
  imports: [TypeOrmModule.forFeature([Visiblity])],
  controllers: [VisiblitiesController],
  providers: [VisiblitiesService],
})
export class VisiblitiesModule {}
