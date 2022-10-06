import { Module } from '@nestjs/common';
import { MeetingRoomsService } from './meeting-rooms.service';
import { MeetingRoomsController } from './meeting-rooms.controller';

@Module({
  controllers: [MeetingRoomsController],
  providers: [MeetingRoomsService]
})
export class MeetingRoomsModule {}
