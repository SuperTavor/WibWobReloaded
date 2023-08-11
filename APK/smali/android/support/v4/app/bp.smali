.class public Landroid/support/v4/app/bp;
.super Landroid/support/v4/app/cl;


# static fields
.field public static final d:Landroid/support/v4/app/cm;


# instance fields
.field public a:I

.field public b:Ljava/lang/CharSequence;

.field public c:Landroid/app/PendingIntent;

.field private final e:Landroid/os/Bundle;

.field private final f:[Landroid/support/v4/app/cv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/app/bq;

    invoke-direct {v0}, Landroid/support/v4/app/bq;-><init>()V

    sput-object v0, Landroid/support/v4/app/bp;->d:Landroid/support/v4/app/cm;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Landroid/support/v4/app/bp;->a:I

    return v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/bp;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/bp;->c:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public d()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/bp;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method public e()[Landroid/support/v4/app/cv;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/bp;->f:[Landroid/support/v4/app/cv;

    return-object v0
.end method

.method public synthetic f()[Landroid/support/v4/app/dd;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/bp;->e()[Landroid/support/v4/app/cv;

    move-result-object v0

    return-object v0
.end method
