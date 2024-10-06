const request = require('supertest');
const app = require('../server'); 

describe('GET /', () => {
    it('should return status 200 and a message', (done) => {
        request(app)
            .get('/')
            .expect(200)
            .expect('Node Server Running !!.')
            .end((err, res) => {
                if (err) return done(err);
                done();
            });
    });
});

