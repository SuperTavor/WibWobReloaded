.class final Lcom/google/android/gms/internal/zzic$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic zzIt:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzic$1;->zzIt:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzic$1;->zzgA()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public zzgA()Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzic$1;->zzIt:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    return-object v0
.end method
