<script src="https://unpkg.com/axios/dist/axios.min.js"></script>

    function submitComment() {
        var datgle = document.getElementById("new-comment").value;

        axios({
            method : 'post',
            url : 'http://localhost:3001/main/QnA/Article/datgle',
            data : {
                datgle  
            }   
        }).then( (res) => {
            list = res.data;
            // console.log(document.getElementById(??).value);
            // console.log(res.data);
            // document.getElementById(??).innerHTML = res.data;
        }).catch((err)=> {
            console.error(err);
        })
    }
 