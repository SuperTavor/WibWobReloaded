.class Lcom/google/android/gms/internal/zzbk$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field final synthetic zzsl:Lcom/google/android/gms/internal/zzbk$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbk$2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbk$2$1;->zzsl:Lcom/google/android/gms/internal/zzbk$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbk$2$1;->zzy(Ljava/lang/String;)V

    return-void
.end method

.method public zzy(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbk$2$1;->zzsl:Lcom/google/android/gms/internal/zzbk$2;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbk$2;->zzsh:Lcom/google/android/gms/internal/zzbk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbk$2$1;->zzsl:Lcom/google/android/gms/internal/zzbk$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzbk$2;->zzsj:Lcom/google/android/gms/internal/zzbh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbk$2$1;->zzsl:Lcom/google/android/gms/internal/zzbk$2;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzbk$2;->zzsk:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzbk;->zza(Lcom/google/android/gms/internal/zzbh;Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
