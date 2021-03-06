create table public.answer
(
    id       integer generated by default as identity
        primary key,
    mod_time timestamp default CURRENT_TIMESTAMP,
    resp_id  varchar(32),
    payload  jsonb
);

alter table public.answer
    owner to ashapochka;

create index answer_resp_id_idx
    on public.answer (resp_id);

create index answer_resp_id_mod_time_idx
    on public.answer (resp_id asc, mod_time desc);

