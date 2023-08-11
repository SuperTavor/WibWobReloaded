.class Lcom/google/android/gms/drive/internal/zzu$3;
.super Lcom/google/android/gms/drive/internal/zzt$zza;


# instance fields
.field final synthetic zzakL:Lcom/google/android/gms/drive/DriveId;

.field final synthetic zzakM:I

.field final synthetic zzakN:Lcom/google/android/gms/drive/events/ChangesAvailableOptions;

.field final synthetic zzakP:Lcom/google/android/gms/drive/internal/zzu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/zzu;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/ChangesAvailableOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzu$3;->zzakP:Lcom/google/android/gms/drive/internal/zzu;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/zzu$3;->zzakL:Lcom/google/android/gms/drive/DriveId;

    iput p4, p0, Lcom/google/android/gms/drive/internal/zzu$3;->zzakM:I

    iput-object p5, p0, Lcom/google/android/gms/drive/internal/zzu$3;->zzakN:Lcom/google/android/gms/drive/events/ChangesAvailableOptions;

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/internal/zzt$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/zzu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzu$3;->zza(Lcom/google/android/gms/drive/internal/zzu;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/drive/internal/zzu;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/zzu;->zzrm()Lcom/google/android/gms/drive/internal/zzam;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzu$3;->zzakL:Lcom/google/android/gms/drive/DriveId;

    iget v3, p0, Lcom/google/android/gms/drive/internal/zzu$3;->zzakM:I

    iget-object v4, p0, Lcom/google/android/gms/drive/internal/zzu$3;->zzakN:Lcom/google/android/gms/drive/events/ChangesAvailableOptions;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;-><init>(Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/ChangesAvailableOptions;)V

    new-instance v2, Lcom/google/android/gms/drive/internal/zzbt;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/zzbt;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, v5, v5, v2}, Lcom/google/android/gms/drive/internal/zzam;->zza(Lcom/google/android/gms/drive/internal/AddEventListenerRequest;Lcom/google/android/gms/drive/internal/zzao;Ljava/lang/String;Lcom/google/android/gms/drive/internal/zzan;)V

    return-void
.end method
