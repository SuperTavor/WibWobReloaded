.class public Lcom/google/android/gms/drive/internal/zzbt;
.super Lcom/google/android/gms/drive/internal/zzd;


# instance fields
.field private final zzagy:Lcom/google/android/gms/internal/zzlb$zzb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlb$zzb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/zzd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzbt;->zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzbt;->zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzabb:Lcom/google/android/gms/common/api/Status;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzlb$zzb;->zzp(Ljava/lang/Object;)V

    return-void
.end method

.method public zzy(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/zzbt;->zzagy:Lcom/google/android/gms/internal/zzlb$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzlb$zzb;->zzp(Ljava/lang/Object;)V

    return-void
.end method
