﻿using System;
using System.Collections.Generic;
using System.Text;

namespace SampleMinimal.Core.Entities.Base
{
    public interface IEntity<T>
    {
        T Id { get; set; }
    }
}
