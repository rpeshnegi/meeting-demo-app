import { Injectable } from '@nestjs/common';
import { CreateVisiblityDto } from './dto/create-visiblity.dto';
import { UpdateVisiblityDto } from './dto/update-visiblity.dto';

@Injectable()
export class VisiblitiesService {
  create(createVisiblityDto: CreateVisiblityDto) {
    return 'This action adds a new visiblity';
  }

  findAll() {
    return `This action returns all visiblities`;
  }

  findOne(id: number) {
    return `This action returns a #${id} visiblity`;
  }

  update(id: number, updateVisiblityDto: UpdateVisiblityDto) {
    return `This action updates a #${id} visiblity`;
  }

  remove(id: number) {
    return `This action removes a #${id} visiblity`;
  }
}
