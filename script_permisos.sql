GRANT SELECT ON TABLE public.album TO uasb_user;
GRANT SELECT ON TABLE public.artist TO uasb_user;
GRANT SELECT ON TABLE public.customer TO uasb_user;
GRANT SELECT ON TABLE public.employee TO uasb_user;
GRANT SELECT ON TABLE public.genre TO uasb_user;
GRANT SELECT ON TABLE public.invoice TO uasb_user;
GRANT SELECT ON TABLE public.invoiceline TO uasb_user;
GRANT SELECT ON TABLE public.mediatype TO uasb_user;
GRANT SELECT ON TABLE public.playlist TO uasb_user;
GRANT SELECT ON TABLE public.playlisttrack TO uasb_user;
GRANT SELECT ON TABLE public.track TO uasb_user;

GRANT INSERT, UPDATE, DELETE ON TABLE public.album TO operator_user;
GRANT INSERT, UPDATE, DELETE ON TABLE public.artist TO operator_user;
GRANT INSERT, UPDATE, DELETE ON TABLE public.customer TO operator_user;
GRANT INSERT, UPDATE, DELETE ON TABLE public.employee TO operator_user;
GRANT INSERT, UPDATE, DELETE ON TABLE public.genre TO operator_user;
GRANT INSERT, UPDATE, DELETE ON TABLE public.invoice TO operator_user;
GRANT INSERT, UPDATE, DELETE ON TABLE public.invoiceline TO operator_user;
GRANT INSERT, UPDATE, DELETE ON TABLE public.mediatype TO operator_user;
GRANT INSERT, UPDATE, DELETE ON TABLE public.playlist TO operator_user;
GRANT INSERT, UPDATE, DELETE ON TABLE public.playlisttrack TO operator_user;
GRANT INSERT, UPDATE, DELETE ON TABLE public.track TO operator_user;

REVOKE ALL ON TABLE public.album FROM public;
REVOKE ALL ON TABLE public.artist FROM public;
REVOKE ALL ON TABLE public.customer FROM public;
REVOKE ALL ON TABLE public.employee FROM public;
REVOKE ALL ON TABLE public.genre FROM public;
REVOKE ALL ON TABLE public.invoice FROM public;
REVOKE ALL ON TABLE public.invoiceline FROM public;
REVOKE ALL ON TABLE public.mediatype FROM public;
REVOKE ALL ON TABLE public.playlist FROM public;
REVOKE ALL ON TABLE public.playlisttrack FROM public;
REVOKE ALL ON TABLE public.track FROM public;

GRANT SELECT ON TABLE public.vista_cancion_mayor_duracion TO admin_user;
GRANT SELECT ON TABLE public.vista_canciones_mas_compradas TO admin_user;
GRANT SELECT ON TABLE public.vista_canciones_mas_vendidas TO admin_user;
GRANT SELECT ON TABLE public.vista_total_ventas_mes_vendedor TO admin_user;

GRANT SELECT ON TABLE public.vista_cancion_mayor_duracion TO test_user;
GRANT SELECT ON TABLE public.vista_canciones_mas_compradas TO test_user;
GRANT SELECT ON TABLE public.vista_canciones_mas_vendidas TO test_user;
GRANT SELECT ON TABLE public.vista_total_ventas_mes_vendedor TO test_user;

REVOKE ALL ON TABLE public.vista_cancion_mayor_duracion FROM public;
REVOKE ALL ON TABLE public.vista_canciones_mas_compradas FROM public;
REVOKE ALL ON TABLE public.vista_canciones_mas_vendidas FROM public;
REVOKE ALL ON TABLE public.vista_total_ventas_mes_vendedor FROM public;