import { Room } from 'src/rooms/entities/room.entity';
import {
  Entity,
  PrimaryGeneratedColumn,
  Column,
  OneToMany,
  CreateDateColumn,
  UpdateDateColumn,
} from 'typeorm';

@Entity('hotels')
export class Hotel {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  name: string;

  @CreateDateColumn()
  created_at;

  @UpdateDateColumn()
  updated_at;

  @OneToMany(() => Room, (room) => room.hotel)
  rooms: Room[];
}
