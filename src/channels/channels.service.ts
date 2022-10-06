import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { CreateChannelDto } from './dto/create-channel.dto';
import { UpdateChannelDto } from './dto/update-channel.dto';
import { Channel } from './entities/channel.entity';

@Injectable()
export class ChannelsService {
  constructor(
    @InjectRepository(Channel)
    private channelsRepository: Repository<Channel>,
  ) {}

  create(createChannelDto: CreateChannelDto) {
    return 'This action adds a new channel';
  }

  async findAll() {
    const query = `SELECT c.name AS channel_name, p.price AS amount, r.room_number AS room, h.name AS hotel_name, v.visiblilty AS VISIBLE,
    c.id AS channel_id, h.id AS hotel_id
    FROM channels AS c
    LEFT JOIN prices p ON c.id = p.channel_id
    inner JOIN rooms r ON r.id = p.room_id
    inner JOIN hotels h ON h.id = r.hotel_id
    LEFT JOIN visiblities v ON v.hotel_id = h.id AND v.channel_id=c.id`;
    return await this.channelsRepository.query(query);
  }

  findOne(id: number) {
    return `This action returns a #${id} channel`;
  }

  update(id: number, updateChannelDto: UpdateChannelDto) {
    return `This action updates a #${id} channel`;
  }

  remove(id: number) {
    return `This action removes a #${id} channel`;
  }
}
