.class Lcom/google/android/gms/internal/zzqh$2;
.super Lcom/google/android/gms/internal/zzqh$zza;


# instance fields
.field final synthetic zzaSF:Lcom/google/android/gms/internal/zzqh;

.field final synthetic zzaSG:Ljava/lang/String;

.field final synthetic zzaSH:Landroid/net/Uri;

.field final synthetic zzaSI:Ljava/lang/String;

.field final synthetic zzaSJ:Ljava/lang/String;

.field final synthetic zzaxw:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqh$2;->zzaSF:Lcom/google/android/gms/internal/zzqh;

    iput p3, p0, Lcom/google/android/gms/internal/zzqh$2;->zzaxw:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzqh$2;->zzaSG:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzqh$2;->zzaSH:Landroid/net/Uri;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzqh$2;->zzaSI:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzqh$2;->zzaSJ:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzqh$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzqh$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/plus/internal/zze;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqh$2;->zza(Lcom/google/android/gms/plus/internal/zze;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/plus/internal/zze;)V
    .locals 7

    iget v2, p0, Lcom/google/android/gms/internal/zzqh$2;->zzaxw:I

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqh$2;->zzaSG:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzqh$2;->zzaSH:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzqh$2;->zzaSI:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzqh$2;->zzaSJ:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/plus/internal/zze;->zza(Lcom/google/android/gms/internal/zzlb$zzb;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
