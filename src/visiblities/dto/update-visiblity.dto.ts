import { PartialType } from '@nestjs/mapped-types';
import { CreateVisiblityDto } from './create-visiblity.dto';

export class UpdateVisiblityDto extends PartialType(CreateVisiblityDto) {}
