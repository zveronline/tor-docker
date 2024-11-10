import Koa from 'koa';
import axios from 'axios';
import { SocksProxyAgent } from 'socks-proxy-agent';

const app = new Koa();
const config = {};
if (process.env.HTTPS_PROXY) {
  config.httpsAgent = new SocksProxyAgent(process.env.HTTPS_PROXY);
  config.proxy = false;
}

app.use(async (ctx) => {
  const { data: ip } = await axios({
    mthod: 'get',
    url: 'https://ipinfo.tw/ip',
    ...config,
  });
  ctx.body = `Уour ip address is ${ip}`;
});

app.listen(3000);
