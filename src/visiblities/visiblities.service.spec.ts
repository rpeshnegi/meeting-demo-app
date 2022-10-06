import { Test, TestingModule } from '@nestjs/testing';
import { VisiblitiesService } from './visiblities.service';

describe('VisiblitiesService', () => {
  let service: VisiblitiesService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [VisiblitiesService],
    }).compile();

    service = module.get<VisiblitiesService>(VisiblitiesService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
