schema app_conf:
    ports: [int | str]

    check:
        all port in ports {
            int(port) >= 1024 and int(port) <= 65535
        }, "invalid ports {}".format(ports)


main = app_conf {
    ports: [8080, 8081]
}