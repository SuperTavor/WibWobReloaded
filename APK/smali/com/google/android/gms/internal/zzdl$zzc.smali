.class Lcom/google/android/gms/internal/zzdl$zzc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field final synthetic zzxC:Lcom/google/android/gms/internal/zzdl;

.field private final zzxJ:Lcom/google/android/gms/internal/zzdl$zzd;

.field private final zzxK:Z

.field private final zzxL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdl;ZLcom/google/android/gms/internal/zzdl$zzd;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdl$zzc;->zzxC:Lcom/google/android/gms/internal/zzdl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzdl$zzc;->zzxK:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdl$zzc;->zzxJ:Lcom/google/android/gms/internal/zzdl$zzd;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdl$zzc;->zzxL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdl$zzc;->zzxL:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public zzdI()Lcom/google/android/gms/internal/zzdl$zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdl$zzc;->zzxJ:Lcom/google/android/gms/internal/zzdl$zzd;

    return-object v0
.end method