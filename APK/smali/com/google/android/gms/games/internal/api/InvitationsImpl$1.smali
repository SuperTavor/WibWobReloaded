.class Lcom/google/android/gms/games/internal/api/InvitationsImpl$1;
.super Lcom/google/android/gms/games/internal/api/InvitationsImpl$LoadInvitationsImpl;


# instance fields
.field final synthetic zzaxo:I

.field final synthetic zzaxp:Lcom/google/android/gms/games/internal/api/InvitationsImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/InvitationsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/InvitationsImpl$1;->zzaxp:Lcom/google/android/gms/games/internal/api/InvitationsImpl;

    iput p3, p0, Lcom/google/android/gms/games/internal/api/InvitationsImpl$1;->zzaxo:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/InvitationsImpl$LoadInvitationsImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/InvitationsImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/InvitationsImpl$1;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/internal/api/InvitationsImpl$1;->zzaxo:I

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzlb$zzb;I)V

    return-void
.end method
