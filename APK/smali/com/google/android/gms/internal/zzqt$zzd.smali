.class Lcom/google/android/gms/internal/zzqt$zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/search/SearchAuthApi$GoogleNowAuthResult;


# instance fields
.field private final zzSC:Lcom/google/android/gms/common/api/Status;

.field private final zzaUU:Lcom/google/android/gms/search/GoogleNowAuthState;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/search/GoogleNowAuthState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqt$zzd;->zzSC:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqt$zzd;->zzaUU:Lcom/google/android/gms/search/GoogleNowAuthState;

    return-void
.end method


# virtual methods
.method public getGoogleNowAuthState()Lcom/google/android/gms/search/GoogleNowAuthState;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzd;->zzaUU:Lcom/google/android/gms/search/GoogleNowAuthState;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$zzd;->zzSC:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
