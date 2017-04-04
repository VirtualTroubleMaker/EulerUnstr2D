program main
    use global
    implicit none
    real(8)::start_time,finish_time,running_time
    call read_grid()         !��������
    call initialize()       !������ʼ��
    call cpu_time(start_time)!��¼��⿪ʼǰ��ʱ��
    call solver()           !���
    call cpu_time(finish_time)!��¼�����ɺ��ʱ��
    call output()           !������
    open(60,file="60cl_cd.dat")
    write(60,*)'ma    alpha(deg)  cl  cd'
    call plot()             !�������������Ϣת��Ϊ��ʶ���������Ϣ��������ʾ���񣬻����������
    close(60)
    running_time=finish_time-start_time
    write(*,*)'*******************************'
    write(*,*) "Running time:"
    write(*,*) running_time
    write(*,*)'*******************************'
    pause
end

