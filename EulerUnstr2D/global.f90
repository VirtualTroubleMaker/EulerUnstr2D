module global
    implicit none
    real(8),parameter::pi=3.1415926535
    real(8),parameter::res_global=1e-6      !��С������ֵ���ﵽ֮�����ֹ����
    real(8),parameter:: gamma=1.4
    
    integer::iteration_max,iterationreal   !iteration_max����ʵ�ʵ�������,iterationreal����ʵ�ʵ�������
    integer::ncell,nnode,nedge        
    integer,allocatable::near(:,:),iedge(:,:),icell(:,:)!������Ϣ
    real(8),allocatable::xy(:,:),vol(:) !������Ϣ
    real(8),allocatable::vect(:,:)             !vect�洢��ʸ��Ϣ
    
    real(8)::dens_init,u_init,v_init,p_init,e_init,velo_init,s_init !��ʼ���ı���
    real(8)::cfl,k2,k4
    real(8)::alpha,ma   !�����Ǻ����������
    
    real(8),allocatable::w_orig(:,:),w_new(:,:)   ! ����r-k 5���������������غ����
    real(8),allocatable::inv_flux(:,:)
    real(8),allocatable::vis_art(:,:),res(:,:)
    real(8),allocatable::pre(:),loc_time(:) !ѹ���͵���ʱ�䲽��
    real(8),allocatable::alpha_factor(:)    !�˹�ճ����ı�������
    real(8),allocatable::dens_res(:)        !ÿһ������֮����ܶȲ�ֵ
end module
