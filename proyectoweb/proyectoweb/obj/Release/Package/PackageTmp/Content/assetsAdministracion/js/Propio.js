var Arre_evento = [];
$(document).ready(function () {
    cale();
   
});

$('#btAleatorio').click(function (e) {
    Enviar();
});
//Evento para traer Ajax
function js1() {
    $.ajax({
        type: "post",
        url: "/ActividadController/crearA",
        data: "",
        datatype: "json",
        cache: false,
        success: function (response) {
            var DT = $.parseJSON(response);
            cale(DT);
        },
        error: function (xhr, request) {
            alert('No Valid Data' + request.responseText);
        }
    });
}

function mostrar() {
    $calendar = $('#fullCalendar');

    

    today = new Date();
    y = today.getFullYear();
    m = today.getMonth();
    d = today.getDate();

    $calendar.fullCalendar({
        viewRender: function (view, element) {
            // We make sure that we activate the perfect scrollbar when the view isn't on Month
            if (view.name != 'month') {
                $(element).find('.fc-scroller').perfectScrollbar();
            }
        },
        header: {
            left: 'title',
            center: 'month,agendaWeek,agendaDay',
            right: 'prev,next,today'
        },
        defaultDate: today,
        selectable: true,
        selectHelper: true,
        editable: true,
        slotMinute: 15,
        allDaySlot: false,
        selectable: true,
        views: {
            month: { // name of view
                titleFormat: 'MMMM YYYY'
                // other view-specific options here
            },
            week: {
                titleFormat: " MMMM D YYYY"
            },
            day: {
                titleFormat: 'D MMM, YYYY'
            }
        },

        select: function (start, end) {

            // on select we show the Sweet Alert modal with an input
            swal({
                title: 'Create an Event',
                html: '<div class="form-group">' +
                    '<input class="form-control" placeholder="Event Title" id="input-field">' +
                    '</div>',
                showCancelButton: true,
                confirmButtonClass: 'btn btn-success',
                cancelButtonClass: 'btn btn-danger',
                buttonsStyling: false
            }).then(function (result) {

                var eventData;
                event_title = $('#input-field').val();

                if (event_title) {
                    eventData = {
                        title: event_title,
                        start: start,
                        end: end
                    };
                    $calendar.fullCalendar('renderEvent', eventData, true); // stick? = true
                }

                $calendar.fullCalendar('unselect');

            });
        },
        editable: true,
        eventLimit: true, // allow "more" link when too many events


        // color classes: [ event-blue | event-azure | event-green | event-orange | event-red ]
    });
}
function cale() {

    $calendar = $('#fullCalendar');

    today = new Date();
    y = today.getFullYear();
    m = today.getMonth();
    d = today.getDate();

    //Eventos es donde se asigna los eventos traidos desde JSON osea la variable x,esto no
    var eventos = [];
    var ensac = (eventos);

    ///entiendo esto
    $calendar.fullCalendar({
        //pagina por defecto
        defaultView: 'agendaWeek',

        defaultDate: new Date(),
        selectable: true,
        selectHelper: true,
        views: {
            month: { // name of view
                titleFormat: 'MMMM YYYY'
                // other view-specific options here
            },
            week: {
                titleFormat: " MMMM D YYYY"
            },
            day: {
                titleFormat: 'D MMM, YYYY'
            }
        },

        select: function (start, end) {

            // on select we show the Sweet Alert modal with an input
            swal({
                title: 'Crear Nuevo Horario',
                html: '<div class="form-group">' +
                    '<input class="form-control" placeholder="Event Title" id="input-field">'+
                    '<input type="time" id="ini">' +
                    '<input type="time" id="fin">' +
                    '</div>',
                showCancelButton: true,
                confirmButtonClass: 'btn btn-success',
                cancelButtonClass: 'btn btn-danger',
                buttonsStyling: false
            }).then(function (result) {
                //le doy formatos de Datetime
                var inicio = start.format("YYYY-MM-DD") + " " + $('#ini').val();
                var fin = end.format("YYYY-MM-DD") + " " + $('#fin').val();
                var eventData;
                event_title = $('#input-field').val();

                if (event_title) {
                    eventData = {
                        title: event_title,
                        start: inicio,
                        end: fin
                    };

                    $calendar.fullCalendar('renderEvent', eventData, true); // stick? = true
                }
                //Json para enviar dato
                //arre_evento es una variable global la cual ayuda a colocarlo en un input para luego pasarlo al controlador
                Arre_evento.push({ "Nombre": $('#input-field').val(), "Inicio": inicio, "Fin": fin });


                $calendar.fullCalendar('unselect');

            });
        },
        editable: false,
        eventLimit: true, // allow "more" link when too many events
        //ensac variables de los eventos
        events: ensac,

        // color classes: [ event-blue | event-azure | event-green | event-orange | event-red ]


    });
}

function Enviar() {

    
    var arr = JSON.stringify(Arre_evento);
    Pasar(arr);

    
}

function Pasar(y) {
    var dato = {
        "x": y
    }

    $.ajax({
        type: "post",
        url: "/Actividades.aspx/crearA",
        data: dato,
        datatype: "json",
        cache: false,
        success: function (response) {
            alert("dasd");
        },
        error: function (xhr, request) {
            alert('No Valid Data' + request.responseText);
        }
    });
}





