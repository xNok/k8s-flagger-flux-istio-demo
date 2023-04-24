import http from 'k6/http';
import { sleep } from 'k6';
export const options = {
    vus: 10,
    duration: '300s',
  };

export default function () {
  http.get(`http://${__ENV.MY_HOSTNAME}/productpage`);
  sleep(1);
}