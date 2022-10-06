import { Channel } from 'src/channels/entities/channel.entity';
import { Hotel } from 'src/hotels/entities/hotel.entity';
import {
  Entity,
  PrimaryGeneratedColumn,
  CreateDateColumn,
  UpdateDateColumn,
  OneToOne,
  JoinColumn,
  Column,
  ManyToOne,
} from 'typeorm';

@Entity('visiblities')
export class Visiblity {
  @PrimaryGeneratedColumn()
  id: number;

  @Column('tinyint')
  visiblilty: boolean;

  @CreateDateColumn()
  created_at;

  @UpdateDateColumn()
  updated_at;

  @ManyToOne(() => Hotel)
  @JoinColumn({ name: 'hotel_id' })
  hotel: Hotel;

  @ManyToOne(() => Channel)
  @JoinColumn({ name: 'channel_id' })
  channel: Channel;
}
