public class RESTCallouts {
    @AuraEnabled
    public static map<string,object> retrivenews(){
        httprequest httpreq =new httprequest();
        httpreq.setEndpoint('https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=773ed0b2f16c4e1682d259fc3272e504');
        httpreq.setMethod('get');
        map<string,object> newsonjsondata =new map<string,object>();
        string strresponse =null;
        try{
            http http = new http();
            httpresponse httpres = http.send(httpreq);
            if(httpres.getStatusCode() ==200){
                strresponse =httpres.getBody();
            }else{
                throw new calloutexception(httpres.getBody());
            }
            
        }catch(exception e){
            throw e;
        }
        if(!string.isblank(strresponse)){
          newsonjsondata=(map<string,object>)JSON.deserializeUntyped(strresponse);    
        }
        if(!newsonjsondata.isEmpty()){
            return newsonjsondata;
        }else{
            return null;
        }
    }

}