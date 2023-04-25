import http from 'k6/http';
import { sleep } from 'k6';
export const options = {
    vus: 2,
    duration: '300s',
  };

export default function () {
  http.get(`http://productpage.booking/productpage`);
  sleep(1);
}