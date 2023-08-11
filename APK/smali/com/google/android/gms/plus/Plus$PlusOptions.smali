.class public final Lcom/google/android/gms/plus/Plus$PlusOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# instance fields
.field final zzaSe:Ljava/lang/String;

.field final zzaSf:Ljava/util/Set;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/plus/Plus$PlusOptions;->zzaSe:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/Plus$PlusOptions;->zzaSf:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/plus/Plus$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/plus/Plus$PlusOptions;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;->zzaSe:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/plus/Plus$PlusOptions;->zzaSe:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;->zzaSf:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/gms/plus/Plus$PlusOptions;->zzaSf:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;Lcom/google/android/gms/plus/Plus$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/plus/Plus$PlusOptions;-><init>(Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;)V

    return-void
.end method

.method public static builder()Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;
    .locals 1

    new-instance v0, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;-><init>()V

    return-object v0
.end method
