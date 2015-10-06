console.log('Loading function');

var aws = require('aws-sdk');
var s3 = new aws.S3({ apiVersion: '2006-03-01' });
var S3 = require('aws-sdk').S3,
    S3S = require('s3-streams');

exports.handler = function(event, context) {
    //console.log('Received event:', JSON.stringify(event, null, 2));

    // Get the object from the event and show its content type
    var bucket = event.Records[0].s3.bucket.name;
    var key = event.Records[0].s3.object.key;
    var params = {
        Bucket: bucket,
        Key: key
    };
//    s3.getObject(params, function(err, data) {
//        if (err) {
//            console.log(err);
//            var message = "Error getting object " + key + " from bucket " + bucket +
//                ". Make sure they exist and your bucket is in the same region as this function.";
//            console.log(message);
//            context.fail(message);
//        } else {
//            console.log('CONTENT TYPE:', data.ContentType);
//            context.succeed(data.ContentType);
//        }
//    });

    var watson = require('watson-developer-cloud');
    var speech_to_text = watson.speech_to_text({
      username: 'ffa1aa61-1cfd-4cd1-ad6c-3b5186ed601e',
      password: 'Pd0HfKWfyWlj',
      version: 'v1'
    });

    var params = {
      audio: S3S.ReadStream(new S3(), {
  	  Bucket: bucket,
          Key: key,
      }),
//fs.createReadStream('./path/to/file.flac'),
      content_type: 'audio/wav'
    };

    speech_to_text.recognize(params, function(err, transcript) {
      if (err)
        console.log(err);
      else
        console.log(JSON.stringify(transcript, null, 2));
    });

};
