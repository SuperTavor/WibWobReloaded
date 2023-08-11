.class Lcom/google/android/gms/games/internal/api/EventsImpl$UpdateImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# instance fields
.field final synthetic zzVb:Lcom/google/android/gms/common/api/Status;

.field final synthetic zzaxi:Lcom/google/android/gms/games/internal/api/EventsImpl$UpdateImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/EventsImpl$UpdateImpl;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$UpdateImpl$1;->zzaxi:Lcom/google/android/gms/games/internal/api/EventsImpl$UpdateImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$UpdateImpl$1;->zzVb:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/EventsImpl$UpdateImpl$1;->zzVb:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
