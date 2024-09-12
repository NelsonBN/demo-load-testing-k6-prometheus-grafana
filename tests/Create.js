import { sleep, check } from 'k6';
import http from 'k6/http';

const BASE_URL = `${__ENV.API_ENDPOINT || "http://localhost:8080" }/products`;

const params = {
    headers: {
        'Content-Type': 'application/json',
    }
};

export let options = {
    stages:[
        { duration: '5s', target: 20 }, // Ramp-up of traffic from 0 to 20 users over 5 seconds
        { duration: '15s', target: 20 }, // Stay at 20 users for 15 seconds
        { duration: '5s', target: 0 }, // Ramp-down to 0 users over 5 seconds
    ],
    thresholds: {
        'http_req_duration': ['p(95)<500'], // 99% of requests must complete below 500ms
    }
};


export default () => {
    const payload = JSON.stringify({
        "name": "New Product",
        "quantity": Math.floor(Math.random() * 50) + 1
    });

    let res = http.post(BASE_URL, payload, params);

    check(res, {
        'is status 201': (r) => r.status === 201,
    });

    sleep(1);
}
