import { User } from './User';

export class Bill {
  billID: number;
  user: User;
  total: number;
  payment: string;
  address: string;
  date: Date;
  name: string;
  phone: string;
  status: string;
  products:string;
}
