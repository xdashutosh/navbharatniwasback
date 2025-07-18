"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.RequestEntity = void 0;
const RequestEntity = (req) => {
    return {
        reqPath: req.path + "",
        reqBaseUrl: req.baseUrl + "",
        reqBody: JSON.stringify(req.body) + "",
        reqCookies: req.cookies + "",
        reqFresh: req.fresh + "",
        reqHostname: req.hostname + "",
        reqIp: req.ip + "",
        reqIps: req.ips + "",
        reqOriginalUrl: req.originalUrl + "",
        reqParams: JSON.stringify(req.params) + "",
        reqProtocol: req.protocol + "",
        reqQuery: JSON.stringify(req.query) + "",
        reqRoute: req.route + "",
        reqSecure: req.secure + "",
        reqSignedCookies: req.signedCookies + "",
        reqStale: req.stale + "",
        reqSubdomains: req.subdomains + "",
        reqXhr: req.xhr + "",
    };
};
exports.RequestEntity = RequestEntity;
