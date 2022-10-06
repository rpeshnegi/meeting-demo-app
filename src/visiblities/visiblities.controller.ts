import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { VisiblitiesService } from './visiblities.service';
import { CreateVisiblityDto } from './dto/create-visiblity.dto';
import { UpdateVisiblityDto } from './dto/update-visiblity.dto';

@Controller('visiblities')
export class VisiblitiesController {
  constructor(private readonly visiblitiesService: VisiblitiesService) {}

  @Post()
  create(@Body() createVisiblityDto: CreateVisiblityDto) {
    return this.visiblitiesService.create(createVisiblityDto);
  }

  @Get()
  findAll() {
    return this.visiblitiesService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.visiblitiesService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateVisiblityDto: UpdateVisiblityDto) {
    return this.visiblitiesService.update(+id, updateVisiblityDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.visiblitiesService.remove(+id);
  }
}
