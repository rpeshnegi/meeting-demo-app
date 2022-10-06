import { Test, TestingModule } from '@nestjs/testing';
import { VisiblitiesController } from './visiblities.controller';
import { VisiblitiesService } from './visiblities.service';

describe('VisiblitiesController', () => {
  let controller: VisiblitiesController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [VisiblitiesController],
      providers: [VisiblitiesService],
    }).compile();

    controller = module.get<VisiblitiesController>(VisiblitiesController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
