require('./bootstrap');
import Swal from 'sweetalert2';

window.deleteConfirm = function (id, url) {
    Swal.fire({
        icon: 'warning',
        text: 'ต้องการลบข้อมูลนี้หรือไม่?',
        showCancelButton: true,
        confirmButtonText: 'ลบ',
        cancelButtonText: 'ยกเลิก',
        confirmButtonColor: '#e3342f',
    }).then((result) => {
        if (result.isConfirmed) {
            Swal.fire(
                'การลบข้อมูลสำเร็จ',
                'รายการที่เลือกถูกลบแล้ว',
                'success'
            )

            window.location.href = url + "/delete/" + id;
        }
    });
}
window.changestatus0 = function (id) {
    var formData = new FormData();
    Swal.fire({
        title: 'ต้องการเปิดการใช้งานรูปภาพหรือไม่?',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'เปิดการใช้งาน',
        cancelButtonText: 'ยกเลิก',
    }).then((result) => {
        if (result.isConfirmed) {
            formData.append("status", 1);
            formData.append("_token", $('meta[name="csrf-token"]').attr('content'));
            var request = new XMLHttpRequest();
            request.open("POST", "background/edit/" + id);
            request.send(formData);
            window.location = window.location + '#loaded';
            window.location.reload();
        }
    })


}

window.changestatus1 = function (id) {
    var formData = new FormData();
    Swal.fire({
        title: 'ต้องการปิดการใช้งานรูปภาพหรือไม่?',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'ปิดการใช้งาน',
        cancelButtonText: 'ยกเลิก',
    }).then((result) => {
        if (result.isConfirmed) {
            formData.append("status", 0);
            formData.append("_token", $('meta[name="csrf-token"]').attr('content'));
            var request = new XMLHttpRequest();
            request.open("POST", "background/edit/" + id);
            request.send(formData);
            window.location = window.location + '#loaded';
            window.location.reload();
        }
    })


}
window.insertimg = function () {

    var formData = new FormData();
    (async () => {
        const {
            value: file
        } = await Swal.fire({
            title: 'เลือกรูปภาพที่ต้องการ',
            input: 'file',
            inputAttributes: {
                'accept': 'image/*',
                'aria-label': 'Upload your profile picture'

            },
            confirmButtonText: 'เพิ่มรูปภาพ',
        })

        if (file) {
            const reader = new FileReader()
            reader.onload = (e) => {
                Swal.fire({
                    title: 'Your uploaded picture',
                    imageUrl: e.target.result,
                    imageWidth: 400,
                    imageHeight: 300,
                    imageAlt: 'The uploaded picture'

                }).then((result) => {
                    if (result.isConfirmed) {
                        formData.append("image", file);
                        formData.append("_token", $('meta[name="csrf-token"]').attr('content'));
                        var request = new XMLHttpRequest();
                        request.open("POST", "background/create");
                        request.send(formData);
                        window.location = window.location + '#loaded';
                        window.location.reload();
                    }
                })
            }
            reader.readAsDataURL(file)





        }
    })()
}
window.editimg = function (id) {

    var formData = new FormData();
    (async () => {
        const {
            value: file
        } = await Swal.fire({
            title: 'เลือกรูปภาพที่ต้องการ',
            input: 'file',
            inputAttributes: {
                'accept': 'image/*',
                'aria-label': 'Upload your profile picture'

            },
            confirmButtonText: 'แก้ไขรูปภาพ',
        })

        if (file) {
            const reader = new FileReader()
            reader.onload = (e) => {
                Swal.fire({
                    title: 'Your uploaded picture',
                    imageUrl: e.target.result,
                    imageWidth: 400,
                    imageHeight: 300,
                    imageAlt: 'The uploaded picture'

                }).then((result) => {
                    if (result.isConfirmed) {
                        formData.append("image", file);
                        formData.append("_token", $('meta[name="csrf-token"]').attr('content'));
                        var request = new XMLHttpRequest();
                        request.open("POST", "background/edit/" + id);
                        request.send(formData);
                        window.location = window.location + '#loaded';
                        window.location.reload();
                    }
                })
            }
            reader.readAsDataURL(file)





        }
    })()
}


window.userstatus0 = function (id, name) {
    var formData = new FormData();
    Swal.fire({
        title: 'ต้องการทำให้ผู้ใช้ ' + name + ' เป็น Admin หรือไม่?',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'ตกลง',
        cancelButtonText: 'ยกเลิก',
    }).then((result) => {
        if (result.isConfirmed) {
            formData.append("type", 1);
            formData.append("_token", $('meta[name="csrf-token"]').attr('content'));
            var request = new XMLHttpRequest();
            request.open("POST", "users/edit/" + id);
            request.send(formData);
            window.location = window.location + '#loaded';
            window.location.reload();
        }
    })


}

window.userstatus1 = function (id, name) {
    var formData = new FormData();
    Swal.fire({
        title: 'ต้องการทำให้ผู้ใช้ ' + name + ' เป็น User หรือไม่?',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'ตกลง',
        cancelButtonText: 'ยกเลิก',
    }).then((result) => {
        if (result.isConfirmed) {
            formData.append("type", 0);
            formData.append("_token", $('meta[name="csrf-token"]').attr('content'));
            var request = new XMLHttpRequest();
            request.open("POST", "users/edit/" + id);
            request.send(formData);
            window.location = window.location + '#loaded';
            window.location.reload();
        }
    })


}
