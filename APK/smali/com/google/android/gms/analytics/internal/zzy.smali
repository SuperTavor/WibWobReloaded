.class public final Lcom/google/android/gms/analytics/internal/zzy;
.super Ljava/lang/Object;


# static fields
.field public static zzOA:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOB:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOC:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOD:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOE:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOF:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOG:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOH:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOI:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOJ:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOK:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOL:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOM:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzON:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOO:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOP:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOQ:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOR:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOS:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOT:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOU:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOe:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOf:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOg:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOh:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOi:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOj:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOk:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOl:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOm:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOn:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOo:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOp:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOq:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOr:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOs:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOt:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOu:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOv:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOw:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOx:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOy:Lcom/google/android/gms/analytics/internal/zzy$zza;

.field public static zzOz:Lcom/google/android/gms/analytics/internal/zzy$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-wide/32 v12, 0x5265c00

    const/16 v10, 0x2000

    const/16 v9, 0x14

    const/4 v8, 0x0

    const-wide/16 v6, 0x1388

    const-string v0, "analytics.service_enabled"

    invoke-static {v0, v8}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOe:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.service_client_enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOf:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.log_tag"

    const-string v1, "GAv4"

    const-string v2, "GAv4-SVC"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOg:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.max_tokens"

    const-wide/16 v2, 0x3c

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOh:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.tokens_per_sec"

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zza(Ljava/lang/String;F)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOi:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.max_stored_hits"

    const/16 v1, 0x7d0

    const/16 v2, 0x4e20

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zza(Ljava/lang/String;II)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOj:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.max_stored_hits_per_app"

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zze(Ljava/lang/String;I)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOk:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.max_stored_properties_per_app"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zze(Ljava/lang/String;I)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOl:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.local_dispatch_millis"

    const-wide/32 v2, 0x1b7740

    const-wide/32 v4, 0x1d4c0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zza(Ljava/lang/String;JJ)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOm:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.initial_local_dispatch_millis"

    invoke-static {v0, v6, v7, v6, v7}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zza(Ljava/lang/String;JJ)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOn:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.min_local_dispatch_millis"

    const-wide/32 v2, 0x1d4c0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOo:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.max_local_dispatch_millis"

    const-wide/32 v2, 0x6ddd00

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOp:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.dispatch_alarm_millis"

    const-wide/32 v2, 0x6ddd00

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOq:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.max_dispatch_alarm_millis"

    const-wide/32 v2, 0x1ee6280

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOr:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.max_hits_per_dispatch"

    invoke-static {v0, v9}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zze(Ljava/lang/String;I)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOs:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.max_hits_per_batch"

    invoke-static {v0, v9}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zze(Ljava/lang/String;I)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOt:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.insecure_host"

    const-string v1, "http://www.google-analytics.com"

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOu:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.secure_host"

    const-string v1, "https://ssl.google-analytics.com"

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOv:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.simple_endpoint"

    const-string v1, "/collect"

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOw:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.batching_endpoint"

    const-string v1, "/batch"

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOx:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.max_get_length"

    const/16 v1, 0x7f4

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zze(Ljava/lang/String;I)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOy:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.batching_strategy.k"

    sget-object v1, Lcom/google/android/gms/analytics/internal/zzm;->zzNJ:Lcom/google/android/gms/analytics/internal/zzm;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzm;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/analytics/internal/zzm;->zzNJ:Lcom/google/android/gms/analytics/internal/zzm;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzm;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOz:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.compression_strategy.k"

    sget-object v1, Lcom/google/android/gms/analytics/internal/zzo;->zzNQ:Lcom/google/android/gms/analytics/internal/zzo;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOA:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.max_hits_per_request.k"

    invoke-static {v0, v9}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zze(Ljava/lang/String;I)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOB:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.max_hit_length.k"

    invoke-static {v0, v10}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zze(Ljava/lang/String;I)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOC:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.max_post_length.k"

    invoke-static {v0, v10}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zze(Ljava/lang/String;I)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOD:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.max_batch_post_length"

    invoke-static {v0, v10}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zze(Ljava/lang/String;I)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOE:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.fallback_responses.k"

    const-string v1, "404,502"

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOF:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.batch_retry_interval.seconds.k"

    const/16 v1, 0xe10

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zze(Ljava/lang/String;I)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOG:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.service_monitor_interval"

    invoke-static {v0, v12, v13}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOH:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.http_connection.connect_timeout_millis"

    const v1, 0xea60

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zze(Ljava/lang/String;I)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOI:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.http_connection.read_timeout_millis"

    const v1, 0xee48

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zze(Ljava/lang/String;I)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOJ:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.campaigns.time_limit"

    invoke-static {v0, v12, v13}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOK:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.first_party_experiment_id"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOL:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.first_party_experiment_variant"

    invoke-static {v0, v8}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zze(Ljava/lang/String;I)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOM:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.test.disable_receiver"

    invoke-static {v0, v8}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzON:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.service_client.idle_disconnect_millis"

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x2710

    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zza(Ljava/lang/String;JJ)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOO:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.service_client.connect_timeout_millis"

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOP:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.service_client.second_connect_delay_millis"

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOQ:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.service_client.unexpected_reconnect_millis"

    const-wide/32 v2, 0xea60

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOR:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.service_client.reconnect_throttle_millis"

    const-wide/32 v2, 0x1b7740

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOS:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.monitoring.sample_period_millis"

    invoke-static {v0, v12, v13}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOT:Lcom/google/android/gms/analytics/internal/zzy$zza;

    const-string v0, "analytics.initialization_warning_threshold"

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/analytics/internal/zzy$zza;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/analytics/internal/zzy$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOU:Lcom/google/android/gms/analytics/internal/zzy$zza;

    return-void
.end method
