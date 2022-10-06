import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { MeetingRoomsService } from './meeting-rooms.service';
import { CreateMeetingRoomDto } from './dto/create-meeting-room.dto';
import { UpdateMeetingRoomDto } from './dto/update-meeting-room.dto';

@Controller('meeting-rooms')
export class MeetingRoomsController {
  constructor(private readonly meetingRoomsService: MeetingRoomsService) {}

  @Post()
  create(@Body() createMeetingRoomDto: CreateMeetingRoomDto) {
    return this.meetingRoomsService.create(createMeetingRoomDto);
  }

  @Get()
  findAll() {
    return this.meetingRoomsService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.meetingRoomsService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateMeetingRoomDto: UpdateMeetingRoomDto) {
    return this.meetingRoomsService.update(+id, updateMeetingRoomDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.meetingRoomsService.remove(+id);
  }
}
