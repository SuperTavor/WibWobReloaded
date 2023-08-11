.class Lcom/google/android/gms/analytics/internal/zzi$zza$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zzNk:Lcom/google/android/gms/analytics/internal/zzi$zza;

.field final synthetic zzNl:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzi$zza;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza$2;->zzNk:Lcom/google/android/gms/analytics/internal/zzi$zza;

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/zzi$zza$2;->zzNl:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza$2;->zzNk:Lcom/google/android/gms/analytics/internal/zzi$zza;

    iget-object v0, v0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzNg:Lcom/google/android/gms/analytics/internal/zzi;

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza$2;->zzNl:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/internal/zzi;->zza(Lcom/google/android/gms/analytics/internal/zzi;Landroid/content/ComponentName;)V

    return-void
.end method
