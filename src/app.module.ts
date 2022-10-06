import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { TypeOrmModule } from '@nestjs/typeorm';
import { DataSource } from 'typeorm';
import { MeetingRoomsModule } from './meeting-rooms/meeting-rooms.module';
import { HotelsModule } from './hotels/hotels.module';
import { ChannelsModule } from './channels/channels.module';
import { RoomsModule } from './rooms/rooms.module';
import { VisiblitiesModule } from './visiblities/visiblities.module';
import { PricesModule } from './prices/prices.module';

@Module({
  imports: [
    TypeOrmModule.forRoot({
      type: 'mysql',
      host: 'localhost',
      port: 3306,
      username: 'root',
      password: '',
      database: 'meeting_app',
      autoLoadEntities: true,
      synchronize: true, // make it false in production
    }),
    MeetingRoomsModule,
    HotelsModule,
    ChannelsModule,
    RoomsModule,
    VisiblitiesModule,
    PricesModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {
  constructor(private dataSource: DataSource) {}
}
