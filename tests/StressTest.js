import { sleep, check } from 'k6';
import http from 'k6/http';

const BASE_URL = `${__ENV.API_ENDPOINT || "http://localhost:8080" }/products`;

let delta = 200;

export let options = {
    stages:[
        { duration: '5s', target: (delta * 1) },
        { duration: '20s', target: (delta * 1) },
        { duration: '5s', target: (delta * 2) },
        { duration: '20s', target: (delta * 2) },
        { duration: '5s', target: (delta * 3) },
        { duration: '20s', target: (delta * 3) },
        { duration: '5s', target: (delta * 4) },
        { duration: '20s', target: (delta * 4) },
        { duration: '5s', target: (delta * 5) },
        { duration: '20s', target: (delta * 5) },
        { duration: '5s', target: (delta * 6) },
        { duration: '20s', target: (delta * 6) },
        { duration: '5s', target: (delta * 7) },
        { duration: '20s', target: (delta * 7) },
        { duration: '5s', target: (delta * 8) },
        { duration: '20s', target: (delta * 8) },
        { duration: '5s', target: (delta * 9) },
        { duration: '20s', target: (delta * 9) },
        { duration: '5s', target: (delta * 10) },
        { duration: '20s', target: (delta * 10) },
        { duration: '30s', target: 0 }
    ],
    thresholds: {
        'http_req_duration': ['p(95)<500'], // 99% of requests must complete below 500ms
    }
};


export default () => {
    let productId = Math.floor(Math.random() * 100) + 1;

    let res = http.get(`${BASE_URL}/${productId}`);

    check(res, {
        'is status 200': (r) => r.status === 200,
    });

    sleep(1);
}
