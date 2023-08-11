.class Lcom/google/android/gms/internal/zzqn$zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/safetynet/SafetyNetApi$SafeBrowsingResult;


# instance fields
.field private zzSC:Lcom/google/android/gms/common/api/Status;

.field private zzaUB:Ljava/lang/String;

.field private final zzaUL:Lcom/google/android/gms/safetynet/SafeBrowsingData;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/SafeBrowsingData;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqn$zzd;->zzSC:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqn$zzd;->zzaUL:Lcom/google/android/gms/safetynet/SafeBrowsingData;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqn$zzd;->zzaUB:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn$zzd;->zzaUL:Lcom/google/android/gms/safetynet/SafeBrowsingData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn$zzd;->zzaUL:Lcom/google/android/gms/safetynet/SafeBrowsingData;

    invoke-virtual {v0}, Lcom/google/android/gms/safetynet/SafeBrowsingData;->getMetadata()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqn$zzd;->zzaUB:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn$zzd;->zzSC:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqn$zzd;->zzSC:Lcom/google/android/gms/common/api/Status;

    goto :goto_0
.end method


# virtual methods
.method public getMetadata()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn$zzd;->zzaUB:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn$zzd;->zzSC:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
