const request = require('supertest');
const app = require('../server');

describe('GET /api/health', () => {
  it('should return 200 and OK status', async () => {
    const res = await request(app).get('/api/health');
    expect(res.statusCode).toEqual(200);
    expect(res.body.status).toEqual('OK');
  });
});