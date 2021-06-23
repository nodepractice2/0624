
 function getpostdata() {
    axios ({
        method : "get",
        url: 'http://localhost:3001/main/postdata'
    }).then((res) => {
        var postdata =res.data;
       console.log(postdata);

    }).catch((err) => {
       console.error(err);
    })
};
